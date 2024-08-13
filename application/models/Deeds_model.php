<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Deeds_table extends CI_Model {
    public static $table_name = 'deeds';
	public static $id = 'id';
	public static $col1 = 'sl_no';
	public static $col2 = 'book_no';
	public static $col3 = 'date';
    public static $col4 = 'page_count';
    public static $col5 = 'pdf_link';
    public static $center = 'center';

	public static $created_on = 'created_on';
	public static $modified_on = 'modified_on';
}

class Deeds_model extends Deeds_table {

    public function view($params=[])
    {
        $sql = self::$id.' as id,'
               .self::$col1.' as col1,'
               .self::$col2.' as col2,'
               .self::$col3.' as col3,'
               .self::$col4.' as col4,'
               .self::$col5.' as pdf_link,'
               .self::$center.' as center,'

               .self::$created_on.' as created_on,'
               .self::$modified_on.' as modified_on' ;
        $this->db->select($sql);
        if(!empty($params['col1']))
        {
            $this->db->like(self::$col1, $params['col1']);
        }
        if(!empty($params['col2']))
        {
            $this->db->like(self::$col2, $params['col2']);
        }
        if(!empty($params['col3']))
        {
            $this->db->where("CASE 
            WHEN ".self::$col3." LIKE '%/%/%' THEN STR_TO_DATE(".self::$col3.", '%d/%m/%Y')
            WHEN ".self::$col3." LIKE '%-%-%' THEN STR_TO_DATE(".self::$col3.", '%d-%m-%Y')
            END = ", $params['col3']);
        }
        if(!empty($params['col4']))
        {
            $this->db->like(self::$col4, $params['col4']);
        }
        if(!empty($params['center']))
        {
            $this->db->where(self::$center, $params['center']);
        }

        if(isset($params['start']) && isset($params['end']))
		{
			$this->db->limit($params['end'],$params['start']);
		}
        if(isset($params['id']))
        {
            $this->db->where(self::$id,$params['id']);

            $query = $this->db->get(self::$table_name);
            return $query->row();


        }else{
            // $this->db->where(self::$col2.' != ', 'admin1');

            $query = $this->db->get(self::$table_name);
            return $query->result();

        }
        

    }

    public function count($params=[])
    {
        $sql = '*';
        $this->db->select($sql);
        if(!empty($params['col1']))
        {
            $this->db->like(self::$col1, $params['col1']);
        }
        if(!empty($params['col2']))
        {
            $this->db->like(self::$col2, $params['col2']);
        }
        if(!empty($params['col3']))
        {
            $this->db->where("CASE 
            WHEN ".self::$col3." LIKE '%/%/%' THEN STR_TO_DATE(".self::$col3.", '%d/%m/%Y')
            WHEN ".self::$col3." LIKE '%-%-%' THEN STR_TO_DATE(".self::$col3.", '%d-%m-%Y')
            END = ", $params['col3']);
        }
        if(!empty($params['col4']))
        {
            $this->db->like(self::$col4, $params['col4']);
        }
        if(!empty($params['center']))
        {
            $this->db->where(self::$center, $params['center']);
        }
       
        // if(isset($params['start']) && isset($params['end']))
		// {
		// 	$this->db->limit($params['end'],$params['start']);
		// }
        $query = $this->db->get(self::$table_name);
        if(!empty($params['search']))
        {
            return $query->num_rows();
        }else{
            return $query->num_rows();
        }

    }

    public function add($params=[])
    {
        $date = new DateTime();
        if(!empty($params['col1']))
        {
            $this->db->set(self::$col1,$params['col1']);
        }
        if(!empty($params['col2']))
        {
            $this->db->set(self::$col2,$params['col2']);
        }
        if(!empty($params['col3']))
        {
            $this->db->set(self::$col3,$params['col3']);

        }
        if(!empty($params['col4']))
        {
            $this->db->set(self::$col4,$params['col4']);
        }
        if(!empty($params['col5']))
        {
            $this->db->set(self::$col5,$params['col5']);
        }
        if(!empty($params['center']))
        {
            $this->db->set(self::$center, $params['center']);
        }
        $this->db->set(self::$created_on,$date->format('Y-m-d H:i:s'));
        
        
        $this->db->set(self::$modified_on,$date->format('Y-m-d H:i:s'));

        $query = $this->db->insert(self::$table_name);
        if($this->db->affected_rows() > 0)
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		}
    }

    public function edit($params=[])
    {
        $date = new DateTime();
        
        if(!empty($params['col1']))
        {
            $this->db->set(self::$col1,$params['col1']);
        }
        if(!empty($params['col2']))
        {
            $this->db->set(self::$col2,$params['col2']);
        }
        if(!empty($params['col3']))
        {
            $this->db->set(self::$col3,$params['col3']);

        }
        if(!empty($params['col4']))
        {
            $this->db->set(self::$col4,$params['col4']);
        }
        if(!empty($params['col5']))
        {
            $this->db->set(self::$col5,$params['col5']);
        }
        if(!empty($params['center']))
        {
            $this->db->set(self::$center, $params['center']);
        }
        $this->db->set(self::$modified_on,$date->format('Y-m-d H:i:s'));
        if(!empty($params['id']))
        {
            $this->db->where(self::$id,$params['id']);
            $query = $this->db->update(self::$table_name);
            if($this->db->affected_rows() > 0)
		    {
			   return TRUE;
		    }else{
			   return FALSE;
		    }
        }
        
    }

    public function delete($params=[])
    {
        if(!empty($params['id']))
        {
            $this->db->where(self::$id,$params['id']);
            $query = $this->db->delete(self::$table_name);
            if($this->db->affected_rows() > 0)
		    {
			   return TRUE;
		    }else{
			   return FALSE;
		    }
        }else{
            return FALSE;
        }
    }

    
}