.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;
.super Landroid/content/BroadcastReceiver;
.source "QSMultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 107
    .local v7, "subId":I
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v9, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 109
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v8, v8, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    .line 102
    .end local v7    # "subId":I
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 112
    .restart local v7    # "subId":I
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v9, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 114
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v8, v8, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 115
    .end local v7    # "subId":I
    :cond_2
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    const-string/jumbo v9, "phone"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 117
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED :: slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v10}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v8, v8, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 120
    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 121
    .restart local v7    # "subId":I
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED :: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v9, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 123
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v8, v8, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto/16 :goto_0

    .line 124
    .end local v7    # "subId":I
    :cond_4
    const-string/jumbo v8, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 125
    const-string/jumbo v8, "simcard_sim_id"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 126
    .local v5, "simId":I
    const-string/jumbo v8, "simcard_sim_icon"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, "simIconIndex":Ljava/lang/String;
    const-string/jumbo v8, "simcard_sim_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 128
    .local v6, "simName":Ljava/lang/String;
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",simIconIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",simName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    .line 134
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[Ljava/lang/String;

    move-result-object v8

    aput-object v6, v8, v5

    .line 136
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get9(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "button$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 137
    .local v1, "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_2

    .line 130
    .end local v1    # "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    .end local v2    # "button$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, "iconIndex":I
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[I

    move-result-object v8

    aput v3, v8, v5

    goto :goto_1

    .line 139
    .end local v3    # "iconIndex":I
    .end local v4    # "simIconIndex":Ljava/lang/String;
    .end local v5    # "simId":I
    .end local v6    # "simName":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 140
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 141
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v9, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 142
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v9, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-set0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I

    .line 143
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get9(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "button$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 144
    .restart local v1    # "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_3

    .line 146
    .end local v1    # "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    .end local v2    # "button$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 147
    const-string/jumbo v8, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v9, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get9(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "button$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 149
    .restart local v1    # "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshLocale()V

    goto :goto_4

    .line 151
    .end local v1    # "button":Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    .end local v2    # "button$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 152
    const-string/jumbo v8, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 151
    if-eqz v8, :cond_0

    .line 153
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v8}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V

    goto/16 :goto_0
.end method
