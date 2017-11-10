.class Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;
.super Ljava/lang/Object;
.source "DragDropBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$000(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$100(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    :cond_0
    return-void
.end method
