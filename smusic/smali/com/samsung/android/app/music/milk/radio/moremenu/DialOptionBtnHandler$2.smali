.class Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;
.super Ljava/lang/Object;
.source "DialOptionBtnHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

.field final synthetic val$isLoginUser:Z

.field final synthetic val$station:Lcom/samsung/android/app/music/common/model/Station;

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$isLoginUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$isLoginUser:Z

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;Z)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$station:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
