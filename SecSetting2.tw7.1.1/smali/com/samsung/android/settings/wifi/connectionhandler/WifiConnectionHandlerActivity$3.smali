.class Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;
.super Ljava/lang/Object;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->showdataConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
    .param p2, "val$mcheck"    # Landroid/widget/CheckBox;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 131
    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected button is Connect , Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-get2(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, "edit_boolean":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "connhan_do_not_show"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->-get0(Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    const-string/jumbo v3, "donotshow checked. connhan_value : BUTTON_CONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v2, "connhan_value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "edit_boolean":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    .line 142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    .line 130
    return-void
.end method
