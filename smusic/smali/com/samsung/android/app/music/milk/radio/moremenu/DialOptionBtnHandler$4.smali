.class Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;
.super Ljava/lang/Object;
.source "DialOptionBtnHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->btnDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Z)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler$4;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialOptionBtnHandler;)Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
