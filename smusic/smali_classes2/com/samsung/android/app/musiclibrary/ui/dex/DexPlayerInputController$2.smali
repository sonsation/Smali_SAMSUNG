.class Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;
.super Ljava/lang/Object;
.source "DexPlayerInputController.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x9

    .line 48
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 51
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 52
    .local v0, "axixVerticalValue":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGenericMotion AXIS_VSCROLL < 0.0f -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$200(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->volumeDownOnDex()Z

    .line 61
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 63
    .end local v0    # "axixVerticalValue":F
    :cond_1
    return v1

    .line 56
    .restart local v0    # "axixVerticalValue":F
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGenericMotion AXIS_VSCROLL >= 0.0f -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$200(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;->volumeUpOnDex()Z

    goto :goto_0
.end method
