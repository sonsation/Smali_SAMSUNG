.class Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;
.super Landroid/os/AsyncTask;
.source "KakaoTalk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/KakaoTalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KakaoTalkLinkSendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/samsung/android/app/music/common/model/share/ShareData;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 105
    const/4 v2, -0x1

    .line 106
    .local v2, "result":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    if-eqz v3, :cond_3

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getEditText()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$000(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addText(Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$000(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x258

    const/16 v6, 0x258

    invoke-virtual {v3, v4, v5, v6}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addImage(Ljava/lang/String;II)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$000(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mContext:Landroid/content/Context;

    const v5, 0x7f0a025c

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addWebButton(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$100(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoLink;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$000(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v5}, Lcom/kakao/kakaolink/KakaoLink;->sendMessage(Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/kakao/util/KakaoParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v2, 0x0

    .line 127
    .end local v1    # "message":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->this$0:Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$100(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoLink;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakao/kakaolink/KakaoLink;->createKakaoTalkLinkMessageBuilder()Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->access$002(Lcom/samsung/android/app/music/milk/share/KakaoTalk;Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 129
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/kakao/util/KakaoParameterException;
    invoke-virtual {v0}, Lcom/kakao/util/KakaoParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 139
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->item:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 96
    return-void
.end method
