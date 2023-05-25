namespace Program_6
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class student_data
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [Column("class")]
        [StringLength(50)]
        public string _class { get; set; }
    }
}
