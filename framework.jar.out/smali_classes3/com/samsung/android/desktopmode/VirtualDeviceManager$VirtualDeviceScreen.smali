.class Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;
.super Landroid/app/InternalPresentation;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualDeviceScreen"
.end annotation


# instance fields
.field final mConnectedDock:Z

.field final mContext:Landroid/content/Context;

.field final mLayoutId:I

.field private mTouchpadLayout:Landroid/widget/FrameLayout;

.field final mWindow:Landroid/view/Window;

.field final mWindowType:I

.field final synthetic this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/VirtualDeviceManager;Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/desktopmode/VirtualDeviceManager;
    .param p2, "outerContext"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "layoutId"    # I
    .param p5, "connectedDock"    # Z

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->this$0:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    .line 131
    iget-object v0, p1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0, p2, v0}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 132
    iput-object p2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    .line 134
    iput p3, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    .line 135
    iput p4, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    .line 136
    iput-boolean p5, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mConnectedDock:Z

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const v2, 0x20518

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 150
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 156
    iget-boolean v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mConnectedDock:Z

    if-eqz v1, :cond_0

    .line 157
    sget v1, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    .line 158
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mTouchpadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 162
    iget-object v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    .end local v0    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, " WindowType="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mWindowType:I

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, " LayoutId="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/samsung/android/desktopmode/VirtualDeviceManager$VirtualDeviceScreen;->mLayoutId:I

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string/jumbo v1, " isShowing="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "\n"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
