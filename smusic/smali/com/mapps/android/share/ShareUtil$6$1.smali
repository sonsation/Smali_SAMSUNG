.class Lcom/mapps/android/share/ShareUtil$6$1;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/mapps/android/share/Track$TrackCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$6;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$6;

.field private final synthetic val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$6;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$6$1;->this$1:Lcom/mapps/android/share/ShareUtil$6;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$6$1;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackComplete()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$6$1;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    invoke-interface {v0}, Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;->onReqeustConfComplete()V

    .line 206
    return-void
.end method
