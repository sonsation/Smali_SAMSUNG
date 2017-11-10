.class Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StepButtonListener"
.end annotation


# instance fields
.field isKeyDown:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->isKeyDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->isKeyDown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    goto :goto_0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->isKeyDown:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$StepButtonListener;->isKeyDown:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
