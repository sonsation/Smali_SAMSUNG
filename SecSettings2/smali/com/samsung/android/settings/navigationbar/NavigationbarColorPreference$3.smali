.class Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;
.super Ljava/lang/Object;
.source "NavigationbarColorPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-set0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Z)Z

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_use_theme_default"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    .line 73
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
