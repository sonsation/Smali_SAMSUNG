.class Lcom/sec/android/app/camera/menu/ProSlider$12;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProSlider;->initProSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;

.field final synthetic val$index:I

.field final synthetic val$indicatorISOValue:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iput p2, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$index:I

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$indicatorISOValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$index:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$900(Lcom/sec/android/app/camera/menu/ProSlider;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$indicatorISOValue:[I

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$index:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$indicatorISOValue:[I

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$12;->val$index:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
