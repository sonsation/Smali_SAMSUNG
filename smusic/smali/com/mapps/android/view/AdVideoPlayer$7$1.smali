.class Lcom/mapps/android/view/AdVideoPlayer$7$1;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer$7;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdVideoPlayer$7;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 1
    .param p1, "checkInterval"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 211
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$7$1;->this$1:Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer$7;->access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$13(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 212
    return-void
.end method