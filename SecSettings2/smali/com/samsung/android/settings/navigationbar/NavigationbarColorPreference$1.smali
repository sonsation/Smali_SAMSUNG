.class Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;
.super Ljava/lang/Object;
.source "NavigationbarColorPreference.java"

# interfaces
.implements Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
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
    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSet(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setRecentlyUsedColor(I)V

    .line 111
    return-void
.end method
