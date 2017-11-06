.class Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;
.super Ljava/lang/Object;
.source "BargeInManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->access$000(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;)Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->getIntBargeInResult()I

    move-result v0

    .line 75
    .local v0, "command":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->access$100(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;I)V

    .line 76
    return-void
.end method
