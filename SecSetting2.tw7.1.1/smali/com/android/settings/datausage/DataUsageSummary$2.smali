.class Lcom/android/settings/datausage/DataUsageSummary$2;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageSummary;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "udsState"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->-get12(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const v3, 0x7f0b1d08

    invoke-virtual {v1, v3}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const v3, 0x7f0b1d09

    invoke-virtual {v1, v3}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
