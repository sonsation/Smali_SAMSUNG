.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    .line 157
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    .local v0, "val":Z
    if-nez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    .line 160
    return v4

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "zen_mode"

    .line 163
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 172
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 175
    return v5
.end method
