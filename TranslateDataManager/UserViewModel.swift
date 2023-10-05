//
//  Test.swift
//  TranslateDataManager
//
//  Created by Bodgar Espinosa Miranda on 04/10/23.
//

import Foundation
import Combine
import TranslateServices

public class UserViewModel: LoginViewModelProtocol {

    @Published private(set) var state: Bool

    public var statePublisher: Published<Bool>.Publisher { $state }
    
    public init(state: Bool = false) {
        self.state = state
    }

    public func saveUser(with user: User)  {
        Task{ @MainActor in
            state = true
        }
    }
}
