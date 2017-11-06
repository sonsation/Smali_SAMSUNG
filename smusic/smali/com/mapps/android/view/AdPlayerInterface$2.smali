.class Lcom/mapps/android/view/AdPlayerInterface$2;
.super Ljava/lang/Object;
.source "AdPlayerInterface.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdPlayerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdPlayerInterface;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdPlayerInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    sget-object v4, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v4, :cond_8

    .line 161
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataNTMovie;

    .line 162
    .local v1, "data":Lcom/mezzo/common/network/data/DataNTMovie;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v4

    if-lez v4, :cond_7

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v0

    .line 164
    .local v0, "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getMediafile_src()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdPlayerInterface;->access$1(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getImpression()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdPlayerInterface;->access$2(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4}, Lcom/mapps/android/view/AdPlayerInterface;->access$8(Lcom/mapps/android/view/AdPlayerInterface;)V

    .line 193
    .end local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 167
    .restart local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataMovieAD;->getTrack(I)Lcom/mezzo/common/network/data/DataTracking;

    move-result-object v3

    .line 168
    .local v3, "tracking":Lcom/mezzo/common/network/data/DataTracking;
    const-string/jumbo v4, "start"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdPlayerInterface;->access$3(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V

    .line 166
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_2
    const-string v4, "firstQuartile"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdPlayerInterface;->access$4(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V

    goto :goto_2

    .line 172
    :cond_3
    const-string v4, "midpoint"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdPlayerInterface;->access$5(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V

    goto :goto_2

    .line 174
    :cond_4
    const-string/jumbo v4, "thirdQuartile"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdPlayerInterface;->access$6(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V

    goto :goto_2

    .line 176
    :cond_5
    const-string v4, "complete"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 177
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdPlayerInterface;->access$7(Lcom/mapps/android/view/AdPlayerInterface;Lcom/mezzo/common/network/data/DataTracking;)V

    goto :goto_2

    .line 178
    :cond_6
    const-string/jumbo v4, "skip"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    const-string/jumbo v4, "progress"

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_2

    .line 186
    .end local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v2    # "i":I
    .end local v3    # "tracking":Lcom/mezzo/common/network/data/DataTracking;
    :cond_7
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdPlayerInterface;->access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    :cond_8
    sget-object v4, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v4, :cond_9

    .line 189
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdPlayerInterface;->access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_9
    iget-object v4, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdPlayerInterface;->access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface$2;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method
