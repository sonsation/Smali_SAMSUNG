.class Lcom/android/settings/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/ZonePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ZonePicker;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 451
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v8}, Lcom/android/settings/ZonePicker;->-get0(Lcom/android/settings/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 452
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, "stateId":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    const-string/jumbo v8, "SetHomeTimeZoneSet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 455
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_5

    .line 456
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "cityName":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v4

    .line 458
    .local v4, "id":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 459
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "match"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 461
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 489
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v4    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 463
    .restart local v1    # "cityName":Ljava/lang/String;
    .restart local v4    # "id":I
    :cond_1
    const/4 v2, -0x1

    .line 464
    .local v2, "defaultIndex":I
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "homecity_timezone"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "mHomeCity":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 466
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v2

    .line 468
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 469
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    .local v3, "homeCity":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 471
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 474
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v8}, Lcom/android/settings/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v9}, Lcom/android/settings/ZonePicker;->getView()Landroid/view/View;

    move-result-object v9

    int-to-long v10, v4

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 477
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 478
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CityName"

    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "SetHomeTimeZone"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 482
    :cond_4
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 486
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v2    # "defaultIndex":I
    .end local v3    # "homeCity":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "mHomeCity":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    :cond_5
    iget-object v8, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v8, v8, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
