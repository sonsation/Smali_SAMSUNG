.class public Lcom/android/settings/applications/DefaultBrowserPreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultBrowserPreference.java"


# static fields
.field private static final BROWSE_PROBE:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "DefaultBrowserPref"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/DefaultBrowserPreference;->DEBUG:Z

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 56
    const v0, 0x7f0b0462

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->setResDescription(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 51
    return-void
.end method

.method public static hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v3, "http:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private resolveBrowserApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/settings/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 130
    iget v7, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v8, 0x20000

    .line 129
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 132
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 134
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 135
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v4
.end method


# virtual methods
.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/applications/DefaultBrowserPreference;->BROWSE_PROBE:Landroid/content/Intent;

    .line 150
    iget v3, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mUserId:I

    const/high16 v4, 0x20000

    .line 149
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 154
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 6
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    move-object v0, p1

    .line 79
    .local v0, "packageName":Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    return v2

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/DefaultBrowserPreference;->mUserId:I

    .line 82
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v1

    .line 84
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 85
    const-string/jumbo v3, "%s"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->persistString(Ljava/lang/String;)Z

    move-result v2

    :cond_2
    return v2
.end method

.method public refreshBrowserApps()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference;->resolveBrowserApps()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "browsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
