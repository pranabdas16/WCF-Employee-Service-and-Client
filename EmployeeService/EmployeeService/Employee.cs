using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace EmployeeService
{
    [KnownType(typeof(FullTimeEmployee))]
    [KnownType(typeof(PartTimeEmployee))]
    [DataContract(Namespace = "http://localhost:8080/2015/11/11")]
    public class Employee
    {
        private int _empId;
        private string _name;
        private string _gender;
        private string _city;
        private int _deptId;
        private DateTime _dob;

        [DataMember(Name = "EmployeeId", Order=1)]
        public int EmployeeId
        {
            get { return _empId; }
            set { _empId = value; }
        }

        [DataMember(Order=2)]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        [DataMember(Order = 3)]
        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        [DataMember(Order = 4)]
        public string City
        { get; set; }

        [DataMember(Order = 5)]
        public int DepartmentId
        {
            get { return _deptId; }
            set { _deptId = value; }
        }

        [DataMember(Order = 6)]
        public DateTime dob
        { get; set; }

        [DataMember(Order = 7)]
        public EmployeeType Type { get; set; }
    }

    public enum EmployeeType
    { 
        FullTimeEmployee =1,
        PartTimeEmployee = 2
    }
}
