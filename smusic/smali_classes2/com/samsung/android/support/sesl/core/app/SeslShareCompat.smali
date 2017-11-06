.class public final Lcom/samsung/android/support/sesl/core/app/SeslShareCompat;
.super Ljava/lang/Object;
.source "SeslShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentReader;,
        Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "com.samsung.android.support.sesl.core.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "com.samsung.android.support.sesl.core.app.EXTRA_CALLING_PACKAGE"

.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;)V
    .locals 4
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "menuItemId"    # I
    .param p2, "shareIntent"    # Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;

    .prologue
    .line 180
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find menu item with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the supplied menu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-static {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslShareCompat;->configureMenuItem(Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;)V

    .line 186
    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;)V
    .locals 6
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "shareIntent"    # Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, "callingActivity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 157
    .local v2, "itemProvider":Landroid/view/ActionProvider;
    instance-of v4, v2, Landroid/widget/ShareActionProvider;

    if-nez v4, :cond_1

    .line 158
    new-instance v3, Landroid/widget/ShareActionProvider;

    invoke-direct {v3, v0}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    .line 162
    .local v3, "provider":Landroid/widget/ShareActionProvider;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".sharecompat_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 165
    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 166
    invoke-interface {p0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 169
    :cond_0
    return-void

    .end local v3    # "provider":Landroid/widget/ShareActionProvider;
    :cond_1
    move-object v3, v2

    .line 160
    check-cast v3, Landroid/widget/ShareActionProvider;

    .restart local v3    # "provider":Landroid/widget/ShareActionProvider;
    goto :goto_0
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "calledActivity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    .local v0, "result":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.android.support.sesl.core.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "result":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    .line 118
    .restart local v0    # "result":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "calledActivity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.android.support.sesl.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method
