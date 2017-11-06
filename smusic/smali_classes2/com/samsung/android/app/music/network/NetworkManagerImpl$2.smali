.class Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;
.super Ljava/lang/Object;
.source "NetworkManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/NetworkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 152
    :goto_1
    return-void

    .line 141
    :pswitch_0
    const-string v2, "mobile_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$200(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$100(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$300(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;->this$0:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->access$402(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)Z

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch -0x4e55d2d9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
