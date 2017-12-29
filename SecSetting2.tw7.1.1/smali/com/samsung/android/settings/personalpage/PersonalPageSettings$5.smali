.class Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;
.super Ljava/lang/Object;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->showDisclaimerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->-set0(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "do_not_show_disclaimer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$5;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "do_not_show_disclaimer"

    .line 189
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    return-void
.end method
