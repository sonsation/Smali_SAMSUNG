.class Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
.super Ljava/lang/Object;
.source "ContactUsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;)V

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "contactUsUriType"    # Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsUriType:[I

    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContactUsUriType is not matched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    return-void

    .line 104
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/contactUs?actionType=sendFeedback"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/directFeedback"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method build()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method setAppName(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    return-object p0
.end method

.method setBillingSupported(Z)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "isSupported"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "isBillingSupported"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    return-object p0
.end method

.method setCallNumber(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "callNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    return-object p0
.end method

.method setFaqUrl(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "faqUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object p0
.end method

.method setFeedbackType(Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;

    .prologue
    .line 136
    sget-object v0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$1;->$SwitchMap$com$samsung$android$app$music$common$help$ContactUsHelper$ContactUsFeedbackType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feedback type is not matched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "feedbackType"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :goto_0
    return-object p0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "feedbackType"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "feedbackType"

    const-string/jumbo v2, "opinion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setMusePurchaseFaqUrl(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "musePurchaseRefundFaqUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    return-object p0
.end method

.method setPreloadBody(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "preloadBody"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    return-object p0
.end method

.method setPreloadBodyType(Ljava/lang/String;)Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/help/ContactUsHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "preloadBodyType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    return-object p0
.end method
