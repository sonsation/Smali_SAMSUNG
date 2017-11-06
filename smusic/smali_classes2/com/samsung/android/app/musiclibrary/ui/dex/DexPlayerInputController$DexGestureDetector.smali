.class final Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DexPlayerInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DexGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;->this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;-><init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DexGestureDetector onDoubleTap ToolType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ButtonState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$DexGestureDetector;->this$0:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->access$400(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method
