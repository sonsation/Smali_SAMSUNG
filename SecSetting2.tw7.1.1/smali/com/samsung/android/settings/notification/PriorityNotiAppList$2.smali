.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 282
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap1(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V

    .line 283
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 284
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get16(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0b185d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 292
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "PriorityAppNotificationsOn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_4

    .line 295
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 297
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    .line 298
    .local v0, "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    iget-object v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "title":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    iget-boolean v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->priority:Z

    if-nez v5, :cond_2

    .line 301
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get4(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/settings/notification/NotificationBackend;->setBypassZenMode(Ljava/lang/String;IZ)Z

    .line 302
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 303
    const-string/jumbo v6, "PriorityAppNotificationsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    .line 302
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 306
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 305
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 307
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 308
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :goto_2
    return-void

    .line 285
    .end local v0    # "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "stateId":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->requestFocus()Z

    .line 287
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 310
    .restart local v0    # "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "stateId":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 311
    const-string/jumbo v6, "PriorityAppNotificationsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    .line 310
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 314
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 313
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 315
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto :goto_2

    .line 296
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 324
    .end local v0    # "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 358
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 281
    .end local v3    # "stateId":Ljava/lang/String;
    :cond_6
    return-void

    .line 325
    .restart local v3    # "stateId":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "PriorityAppNotificationsOff"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 326
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_a

    .line 327
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2    # "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 329
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    .line 330
    .restart local v0    # "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    iget-object v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .restart local v4    # "title":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 332
    iget-boolean v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->priority:Z

    if-eqz v5, :cond_8

    .line 333
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get4(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/settings/notification/NotificationBackend;->setBypassZenMode(Ljava/lang/String;IZ)Z

    .line 334
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 335
    const-string/jumbo v6, "PriorityAppNotificationsOff"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    .line 334
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 338
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 337
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 339
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 340
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :goto_5
    return-void

    .line 342
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 343
    const-string/jumbo v6, "PriorityAppNotificationsOff"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    .line 342
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 346
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 345
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 347
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto :goto_5

    .line 328
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 356
    .end local v0    # "bixbyRow":Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
