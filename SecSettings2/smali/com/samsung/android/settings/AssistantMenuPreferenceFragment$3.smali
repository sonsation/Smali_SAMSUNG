.class Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 277
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, "val":I
    const/4 v0, 0x0

    .line 279
    .local v0, "entry":Ljava/lang/String;
    const-string/jumbo v3, "AssistantMenuPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " PointerSpeed onPreferenceChange val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assistant_menu_pointer_speed"

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    if-nez v2, :cond_1

    .line 282
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .end local v0    # "entry":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->-get3(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->-get4(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    return v6

    .line 283
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "entry":Ljava/lang/String;
    :cond_1
    if-ne v2, v6, :cond_2

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_0

    .line 285
    .local v0, "entry":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_0
.end method
