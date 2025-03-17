//
//  SupabaseManager.swift
//  Connections
//
//  Created by Tomas Gonzalez on 3/17/25.
//

import Foundation
import Supabase

class SupabaseManager {
    static let shared = SupabaseManager()
    
    let client: SupabaseClient
    
    private init?() {
        guard let urlString = ProcessInfo.processInfo.environment["SUPABASE_URL"],
              let supabaseKey = ProcessInfo.processInfo.environment["SUPABASE_ANON_KEY"],
              let supabaseURL = URL(string: urlString) else {
                fatalError("SUPABASE URL is invalid")
            return nil
            }

        
        self.client = SupabaseClient(supabaseURL: supabaseURL, supabaseKey: supabaseKey)
    }
}



