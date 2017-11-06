.class Lcom/mapps/android/share/Track$9;
.super Landroid/os/Handler;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$9;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$9;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    .line 386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mapps/android/share/Track$9;->val$completeListener:Lcom/mapps/android/share/Track$TrackCompleteListener;

    invoke-interface {v0}, Lcom/mapps/android/share/Track$TrackCompleteListener;->onTrackComplete()V

    .line 390
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 391
    return-void
.end method
