.class Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;
.super Ljava/lang/Object;
.source "EventPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/EventPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    .line 103
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->access$100(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->getTypeByValue(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    move-result-object v2

    .line 104
    .local v2, "type":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    if-eqz v2, :cond_0

    .line 108
    sget-object v3, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$3;->$SwitchMap$com$samsung$android$app$music$milk$event$EventManager$PopupType:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 110
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v3, "web_url"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->access$100(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    goto :goto_0

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "deepLinkIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->access$100(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupLinkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 124
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$2;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f1202aa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
