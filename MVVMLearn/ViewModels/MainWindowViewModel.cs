using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Collections.ObjectModel;
using MVVMLearn.Models;
using MVVMLearn.Commands;

namespace MVVMLearn.ViewModels
{
    public class MainWindowViewModel : INotifyPropertyChanged
    {
        private Phone _selectedPhone;
        private RelayCommand _addCommand, 
                             _removeCommand, 
                             _doubleCommand;

        public ObservableCollection<Phone> Phones { get; set; }
        public RelayCommand AddCommand
        {
            get
            {
                return _addCommand ?? (_addCommand = new RelayCommand(obj =>
                {
                    Phone phone = new Phone();
                    Phones.Insert(0, phone);
                    SelectedPhone = phone;
                }));
            }
        }
        public RelayCommand RemoveCommand
        {
            get
            {
                return _removeCommand ?? (_removeCommand = new RelayCommand(obj =>
                {
                    Phone phone = obj as Phone;
                    if (phone != null)
                    {
                        Phones.Remove(phone);
                    }
                },
                (obj) => Phones.Count > 0));
            }
        }
        public RelayCommand DoubleCommand
        {
            get
            {
                return _doubleCommand ?? (_doubleCommand = new RelayCommand(obj =>
                {
                    Phone phone = obj as Phone;
                    if (phone != null)
                    {
                        Phone phoneCopy = new Phone
                        {
                            Title = phone.Title,
                            Company = phone.Company,
                            Price = phone.Price,
                        };
                        Phones.Insert(0, phoneCopy);
                    }
                }));
            }
        }

        public Phone SelectedPhone
        {
            get { return _selectedPhone; }
            set
            {
                _selectedPhone = value;
                OnPropertyChanged("SelectedPhone");
            }
        }

        public MainWindowViewModel()
        {
            Phones = new ObservableCollection<Phone>
            {
                new Phone { Title = "iPhone 7", Company = "Apple", Price = 56000 },
                new Phone { Title = "Galaxy S7 Edge", Company = "Samsung", Price = 60000 },
                new Phone { Title = "Elite x3", Company = "HP", Price = 56000 },
                new Phone { Title = "Mi5S", Company = "Xiaomi", Price = 35000 },
            };
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
            }
        }
    }
}
