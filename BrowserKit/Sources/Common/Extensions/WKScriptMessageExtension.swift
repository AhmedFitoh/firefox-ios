// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import WebKit

public extension WKScriptMessage {
    func decodeBody<T: Decodable>(as type: T.Type) -> T? {
        guard let dict = (body as? [String: Any]),
              let data = try? JSONSerialization.data(withJSONObject: dict, options: [])
        else { return nil }
        return try? JSONDecoder().decode(type, from: data)
    }
}
