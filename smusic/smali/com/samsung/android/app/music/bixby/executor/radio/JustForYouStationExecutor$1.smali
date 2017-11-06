.class Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "JustForYouStationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 42
    const-string v2, "JustForYouStationExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNext. create station result - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 71
    :cond_0
    return-void

    .line 47
    :pswitch_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "JustForYou"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "FixedListSeed"

    const-string v3, "Exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    .end local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 51
    .restart local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    goto :goto_0

    .line 53
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :pswitch_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "JustForYou"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "FixedListSeed"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    .end local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 56
    .restart local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    goto :goto_0

    .line 58
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :pswitch_3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "JustForYou"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "SamsungAccount"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    .end local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 61
    .restart local v0    # "bixbyResult":Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/radio/JustForYouStationExecutor$1;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
