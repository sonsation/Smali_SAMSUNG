.class Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "DataSavingChnPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSavingChnPreference;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 95
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "DataEnabledObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateEnabled()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$DataEnabledObserver;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->updateSwitchState()V

    .line 93
    return-void
.end method
