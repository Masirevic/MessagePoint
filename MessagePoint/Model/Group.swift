//
//  Group.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/30/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import Foundation

class Group {
    
    private var _groupTitle: String
    private var _groupDesc: String
    private var _members: [String]
    private var _key: String
    private var _membersCount: Int
    
    var groupTitle: String {
      return _groupTitle
    }
    
    var groupDesc: String {
        return _groupDesc
    }
    
    var key: String {
        return _key
    }
    
    var memberCount: Int {
        return _membersCount
    }
    
    var members: [String] {
        return _members
    }
    
    
    init (title: String, description: String, key: String, members: [String], memberCount: Int) {
        self._groupTitle = title
        self._groupDesc = description
        self._key = key
        self._members = members
        self._membersCount = memberCount
    }
    
    
}



























