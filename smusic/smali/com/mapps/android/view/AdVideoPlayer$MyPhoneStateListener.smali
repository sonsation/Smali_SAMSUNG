.class public Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AdVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 387
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v1, 0x4

    iput v1, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 390
    :cond_0
    return-void
.end method
