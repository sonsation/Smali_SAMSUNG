.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;
.super Ljava/lang/Object;
.source "GLTextureViewBaseV2.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 128
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 141
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 161
    return-void
.end method
