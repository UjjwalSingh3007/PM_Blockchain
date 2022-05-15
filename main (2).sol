pragma solidity ^0.6.8;

contract StructDemo{
    struct Person{
        int adharNo;
        string name;
        string addres;
        string gender;
}

Person []persondb;

function addPerson(int adharNo, string memory name, string memory addres, string memory gender) public{
	Person memory p
		=Person(adharNo, name,addres,gender);
	persondb.push(p);
}

function getPerson(int adharNo) 
    public view returns(string memory,string memory,string memory){
        uint i;
        for(i=0;i<persondb.length;i++)
        {
            Person memory p
                =persondb[i];
            if(p.adharNo==adharNo)
            {
                return(p.name,p.addres,p.gender);
            }
        }
        return("No data", "No data", "No data");
    }
}
