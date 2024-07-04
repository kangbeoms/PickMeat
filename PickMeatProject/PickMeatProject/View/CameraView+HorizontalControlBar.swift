//
//  CameraView+HorizontalControlBar.swift
//  PickMeatProject
//
//  Created by 박정민 on 7/4/24.
//

import SwiftUI

extension CameraView {
    @ViewBuilder var horizontalControlBar: some View {
        if VM.hasPhoto {
            horizontalControlBarPostPhoto
        } else {
            horizontalControlBarPrePhoto
        }
    }
    
    var horizontalControlBarPrePhoto: some View {
        HStack {
            AlbumButton
                .frame(width: controlButtonWidth)
            Spacer()
            photoCaptureButton
                .frame(width: controlButtonWidth)
            Spacer()
            changeCamera
                .frame(width: controlButtonWidth)
        }
        .padding(.horizontal, 10) // 패딩을 추가하여 양쪽에 여백을 줍니다.
    }
    
    var horizontalControlBarPostPhoto: some View {
        HStack {
            retakeButton
                .frame(width: controlButtonWidth)
            Spacer()
            
            usePhotoButton
                .frame(width: controlButtonWidth)
        }
    }
}

#Preview {
    CameraView(imageData: .constant(nil), showCamera: .constant(true))
}
