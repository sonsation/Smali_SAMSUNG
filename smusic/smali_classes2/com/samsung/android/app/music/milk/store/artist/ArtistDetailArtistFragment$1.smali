.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;
.super Ljava/lang/Object;
.source "ArtistDetailArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->showLoading(Z)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x28a4
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
    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->showLoading(Z)V

    .line 75
    packed-switch p3, :pswitch_data_0

    .line 101
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 77
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    const/16 v2, 0x28a4

    if-ne p2, v2, :cond_0

    move-object v0, p4

    .line 79
    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;

    .line 81
    .local v0, "artistDetailRelatedArtistInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;Ljava/util/List;)V

    goto :goto_0

    .line 87
    .end local v0    # "artistDetailRelatedArtistInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;
    :pswitch_2
    const/4 v1, -0x1

    .line 88
    .local v1, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_1

    .line 89
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 92
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    const/4 v3, 0x0

    invoke-static {v2, p3, v1, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->access$100(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;IILjava/lang/String;)V

    goto :goto_0

    .line 75
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

    .line 92
    :pswitch_data_1
    .packed-switch 0x28a4
        :pswitch_3
    .end packed-switch
.end method
