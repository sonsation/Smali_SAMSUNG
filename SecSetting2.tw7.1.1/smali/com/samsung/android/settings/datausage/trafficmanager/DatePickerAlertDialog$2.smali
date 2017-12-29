.class Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x5

    .line 64
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "currentTab":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b12c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "start":Ljava/lang/String;
    const-string/jumbo v5, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTabChanged, currentTab is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    .line 69
    new-instance v2, Ljava/util/Date;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v6, v5, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 70
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->updateDate(III)V

    .line 63
    :goto_0
    return-void

    .line 74
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "date":Ljava/util/Date;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    .line 75
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v6, v6, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    .line 76
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v6, v5, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v8, v5, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 77
    new-instance v2, Ljava/util/Date;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v6, v5, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 78
    .restart local v2    # "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 79
    .restart local v0    # "c":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 80
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 81
    .local v3, "day":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 82
    const-string/jumbo v5, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "c.get(Calendar.MONTH):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "c.get(Calendar.DAY_OF_MONTH):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->updateDate(III)V

    goto :goto_0

    .line 85
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "day":I
    :cond_1
    new-instance v2, Ljava/util/Date;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    iget-wide v6, v5, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 86
    .restart local v2    # "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .restart local v0    # "c":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 88
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->updateDate(III)V

    goto/16 :goto_0
.end method
