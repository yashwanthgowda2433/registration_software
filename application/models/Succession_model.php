<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Succession_table extends CI_Model {
    public static $table_name = 'succession';
	public static $id = 'id';
	public static $col1 = 'sl_no';
	public static $col2 = 'book_no';
	public static $col3 = 'date';
	public static $col4 = 'interested_party';
	public static $col5 = 'village_name';
	public static $col6 = 'district';
	public static $col7 = 'taluk';
	public static $col8 = 'page_no';
	public static $col9 = 'page_count';
    public static $col10 = 'document_attached';
    public static $col11 = 'year_endorsement';
    public static $col12 = 'pdf_link';
    public static $center = 'center';

	public static $created_on = 'created_on';
	public static $modified_on = 'modified_on';
}

class Succession_model extends Succession_table {

    public function view($params=[])
    {
        $sql = self::$id.' as id,'
               .self::$col1.' as col1,'
               .self::$col2.' as col2,'
               .self::$col3.' as col3,'
               .self::$col4.' as col4,'
               .self::$col5.' as col5,'
               .self::$col6.' as col6,'
               .self::$col7.' as col7,'
               .self::$col8.' as col8,'
               .self::$col9.' as col9,'
               .self::$col10.' as col10,'
               .self::$col11.' as col11,'
               .self::$col12.' as pdf_link,'
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
        if(!empty($params['col5']))
        {
            $this->db->like(self::$col5, $params['col5']);
        }
        if(!empty($params['col6']))
        {
            $this->db->like(self::$col6, $params['col6']);
        }
        if(!empty($params['col7']))
        {
            $this->db->like(self::$col7, $params['col7']);
        }
        
        if(!empty($params['col8']))
        {
            $this->db->like(self::$col8, $params['col8']);
        }
        if(!empty($params['col9']))
        {
            $this->db->like(self::$col9, $params['col9']);
        }
        if(!empty($params['col10']))
        {
            $this->db->like(self::$col10, $params['col10']);
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
        if(!empty($params['col5']))
        {
            $this->db->like(self::$col5, $params['col5']);
        }
        if(!empty($params['col6']))
        {
            $this->db->like(self::$col6, $params['col6']);
        }
        if(!empty($params['col7']))
        {
            $this->db->like(self::$col7, $params['col7']);
        }
        
        if(!empty($params['col8']))
        {
            $this->db->like(self::$col8, $params['col8']);
        }
        if(!empty($params['col9']))
        {
            $this->db->like(self::$col9, $params['col9']);
        }
        if(!empty($params['col10']))
        {
            $this->db->like(self::$col10, $params['col10']);
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
        if(!empty($params['col6']))
        {
            $this->db->set(self::$col6,$params['col6']);
        }
        if(!empty($params['col7']))
        {
            $this->db->set(self::$col7,$params['col7']);
        }
        if(!empty($params['col8']))
        {
            $this->db->set(self::$col8,$params['col8']);
        }
        if(!empty($params['col9']))
        {
            $this->db->set(self::$col9,$params['col9']);
        }
        if(!empty($params['col10']))
        {
            $this->db->set(self::$col10, $params['col10']);
        }
        if(!empty($params['col11']))
        {
            $this->db->set(self::$col11, $params['col11']);
        }
        if(!empty($params['col12']))
        {
            $this->db->set(self::$col12, $params['col12']);
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
        if(!empty($params['col6']))
        {
            $this->db->set(self::$col6,$params['col6']);
        }
        if(!empty($params['col7']))
        {
            $this->db->set(self::$col7,$params['col7']);
        }
        if(!empty($params['col8']))
        {
            $this->db->set(self::$col8,$params['col8']);
        }
        if(!empty($params['col9']))
        {
            $this->db->set(self::$col9,$params['col9']);
        }
        if(!empty($params['col10']))
        {
            $this->db->set(self::$col10, $params['col10']);
        }
        if(!empty($params['col11']))
        {
            $this->db->set(self::$col11, $params['col11']);
        }
        if(!empty($params['col12']))
        {
            $this->db->set(self::$col12, $params['col12']);
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
    public function get_district(){
        $this->db->select('district');
        $this->db->group_by('district');
        $this->db->order_by("district", "asc");

        $query = $this->db->get(self::$table_name);

        return $query->result();
    }

    public function get_taluk(){
        $this->db->select('taluk');
        $this->db->group_by('taluk');
        $this->db->order_by("taluk", "asc");

        $query = $this->db->get(self::$table_name);

        return $query->result();
    }
    
}