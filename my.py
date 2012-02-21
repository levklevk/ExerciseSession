#!/usr/bin/python

def responseIsN(line):
	'''Returns true if this line contains N as the response'''
	array=line.split(":")
	return len(array)==2 and array[1].strip()=="N"


def fileContainsResponseN(fname):
    f=open(fname)
    for ll in f:
	if responseIsN(ll):
	    return True
    return False


def listoffiles(dir):
	'''returns a list of files in the given dir'''
	import os
	return os.listdir(dir)

def main():
	print listoffiles("cleaneddata")
	print responseIsN("cleaneddata/0213.txt")


main()
