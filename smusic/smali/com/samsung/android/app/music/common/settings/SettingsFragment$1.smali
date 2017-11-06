.class Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 913
    const-string v3, "favorite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 914
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 915
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020220

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 916
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 917
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0838

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 918
    .local v1, "size":I
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$1;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 920
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11021f

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 919
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 923
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "size":I
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method
