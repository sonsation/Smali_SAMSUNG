.class final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;
.super Ljava/lang/Object;
.source "SettingProviderUriHelper.java"


# static fields
.field static final SETTING_URI_CODE:I = 0x3e8


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mContentUri:Landroid/net/Uri;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mUriMatcher:Landroid/content/UriMatcher;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/setting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "contentUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mContentUri:Landroid/net/Uri;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vnd."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dir/setting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mContentType:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "setting/*"

    const/16 v3, 0x3e8

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    return-void
.end method


# virtual methods
.method getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method match(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method
