.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;
.super Ljava/lang/Object;
.source "ArtistDetailAlbumFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 65
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->showLoading(Z)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x28a3
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->showLoading(Z)V

    .line 76
    packed-switch p3, :pswitch_data_0

    .line 102
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 78
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    const/16 v2, 0x28a3

    if-ne p2, v2, :cond_0

    move-object v0, p4

    .line 79
    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;

    .line 82
    .local v0, "artistDetailAlbumInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;->getAlbumList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->showContents(Ljava/util/List;)V

    goto :goto_0

    .line 88
    .end local v0    # "artistDetailAlbumInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;
    :pswitch_2
    const/4 v1, -0x1

    .line 89
    .local v1, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_1

    .line 90
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 93
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v1, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x28a3
        :pswitch_3
    .end packed-switch
.end method
