.class Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;
.super Ljava/lang/Object;
.source "ItemDataButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->access$100(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
