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
    .line 450
    iput-object p1, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 454
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/ZonePicker;->-get1(Lcom/android/settings/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 455
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "stateId":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v10, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    const-string/jumbo v10, "SetHomeTimeZoneSet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 458
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-eqz v10, :cond_6

    .line 459
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "cityName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 461
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 463
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 464
    return-void

    .line 466
    :cond_0
    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v5

    .line 467
    .local v5, "id":I
    if-ne v5, v12, :cond_2

    .line 468
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 470
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 558
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v5    # "id":I
    :cond_1
    :goto_0
    return-void

    .line 472
    .restart local v1    # "cityName":Ljava/lang/String;
    .restart local v5    # "id":I
    :cond_2
    const/4 v3, -0x1

    .line 473
    .local v3, "defaultIndex":I
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "homecity_timezone"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "mHomeCity":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 475
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v3

    .line 477
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 478
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 479
    .local v4, "homeCity":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 480
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 483
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 485
    :cond_4
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v11}, Lcom/android/settings/ZonePicker;->getView()Landroid/view/View;

    move-result-object v11

    int-to-long v12, v5

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 486
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 487
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 491
    :cond_5
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 495
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v3    # "defaultIndex":I
    .end local v4    # "homeCity":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v6    # "mHomeCity":Ljava/lang/String;
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    :cond_6
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 497
    :cond_7
    const-string/jumbo v10, "SetTimeZone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 498
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-eqz v10, :cond_b

    .line 499
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .restart local v1    # "cityName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 501
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 503
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 504
    return-void

    .line 506
    :cond_8
    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v5

    .line 507
    .restart local v5    # "id":I
    if-ne v5, v12, :cond_9

    .line 508
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 510
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 512
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 513
    .local v8, "now":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/settings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v2

    .line 514
    .local v2, "currentId":I
    if-ne v5, v2, :cond_a

    .line 515
    const-string/jumbo v10, "ZonePicker"

    const-string/jumbo v11, "id == currentId"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 518
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 520
    :cond_a
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v11}, Lcom/android/settings/ZonePicker;->getView()Landroid/view/View;

    move-result-object v11

    int-to-long v12, v5

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 521
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 523
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 527
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v2    # "currentId":I
    .end local v5    # "id":I
    .end local v8    # "now":Ljava/util/Calendar;
    :cond_b
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 529
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 531
    :cond_c
    const-string/jumbo v10, "SortAlphabetically"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 532
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/ZonePicker;->-get0(Lcom/android/settings/ZonePicker;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 533
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "Alphabetical"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 535
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 537
    :cond_d
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v10, v11}, Lcom/android/settings/ZonePicker;->-wrap0(Lcom/android/settings/ZonePicker;Z)V

    .line 538
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 539
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "Alphabetical"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 542
    :cond_e
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 544
    :cond_f
    const-string/jumbo v10, "SortByTimeZone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 545
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/ZonePicker;->-get0(Lcom/android/settings/ZonePicker;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 546
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "TimezoneOrder"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 548
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 550
    :cond_10
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/settings/ZonePicker;->-wrap0(Lcom/android/settings/ZonePicker;Z)V

    .line 551
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 552
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "TimezoneOrder"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 555
    :cond_11
    iget-object v10, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
