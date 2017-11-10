.class Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;
.super Ljava/lang/Object;
.source "ItemEffectListButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->access$800(Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->access$900(Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->access$700(Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;->access$700(Lcom/sec/android/app/camera/widget/gl/ItemEffectListButton;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
