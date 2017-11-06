.class public Lcom/samsung/android/app/music/provider/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.music.provider.preference"

.field public static final CONTENT_PREF_BOOLEAN_URI:Ljava/lang/String; = "content://com.sec.android.app.music.provider.preference/boolean/"

.field public static final CONTENT_PREF_INT_URI:Ljava/lang/String; = "content://com.sec.android.app.music.provider.preference/integer/"

.field public static final CONTENT_PREF_LONG_URI:Ljava/lang/String; = "content://com.sec.android.app.music.provider.preference/long/"

.field public static final CONTENT_PREF_STRING_URI:Ljava/lang/String; = "content://com.sec.android.app.music.provider.preference/string/"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static PREFERENCE_COLUMNS:[Ljava/lang/String; = null

.field public static final PREF_BOOLEAN:I = 0x1

.field public static final PREF_INT:I = 0x3

.field public static final PREF_KEY:Ljava/lang/String; = "key"

.field public static final PREF_LONG:I = 0x4

.field public static final PREF_STRING:I = 0x2

.field public static final PREF_VALUE:Ljava/lang/String; = "value"

.field private static sPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/preferences/IPrefImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 23
    const-class v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->LOG_TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "boolean/*/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string/jumbo v2, "string/*/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "integer/*/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.provider.preference"

    const-string v2, "long/*/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->sPreferences:Ljava/util/Map;

    .line 144
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/provider/PreferenceProvider;->PREFERENCE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getUriByType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPrefModelByUri(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 244
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrefModelByUri uri is wrong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "key":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preference name is null!!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/common/preferences/PrefImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/common/preferences/PrefImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    .local v0, "pref":Lcom/samsung/android/app/music/common/preferences/IPrefImpl;
    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v0    # "pref":Lcom/samsung/android/app/music/common/preferences/IPrefImpl;
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    return-object v1
.end method

.method private static getUriByType(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupport preftype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_0
    const-string v0, "content://com.sec.android.app.music.provider.preference/boolean/"

    .line 237
    :goto_0
    return-object v0

    .line 233
    :pswitch_1
    const-string v0, "content://com.sec.android.app.music.provider.preference/integer/"

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "content://com.sec.android.app.music.provider.preference/long/"

    goto :goto_0

    .line 237
    :pswitch_3
    const-string v0, "content://com.sec.android.app.music.provider.preference/string/"

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private persistBoolean(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, " values is null!!!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    const/4 v2, 0x0

    .line 175
    .local v2, "vBoolean":Z
    const-string v3, "key"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "kBoolean":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 178
    .local v1, "tempBoolean":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->setPrefBoolean(Ljava/lang/String;Z)V

    .line 183
    return v2
.end method

.method private persistInt(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, " values is null!!!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 159
    .local v2, "vInteger":I
    const-string v3, "key"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "kInteger":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 162
    .local v1, "tempInteger":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->setPrefInt(Ljava/lang/String;I)V

    .line 166
    return v2
.end method

.method private persistLong(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, " values is null!!!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_0
    const-wide/16 v2, 0x0

    .line 192
    .local v2, "vLong":J
    const-string v4, "key"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "kLong":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 195
    .local v1, "tempLong":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->setPrefLong(Ljava/lang/String;J)V

    .line 200
    return-wide v2
.end method

.method private persistString(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " values is null!!!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    const-string v2, "key"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "kString":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "vString":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->setPrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v1
.end method

.method private preferenceToCursor(Ljava/lang/Object;)Landroid/database/MatrixCursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/samsung/android/app/music/provider/PreferenceProvider;->PREFERENCE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 148
    .local v1, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 149
    .local v0, "builder":Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 150
    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPrefModelByUri(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object v0

    .line 115
    .local v0, "model":Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->removePreference(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPrefModelByUri(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object v1

    .line 70
    .local v1, "model":Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    sget-object v3, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->preferenceToCursor(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->preferenceToCursor(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->getPrefInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->preferenceToCursor(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :pswitch_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPreference(Ljava/lang/String;)Lcom/samsung/android/app/music/common/preferences/IPrefImpl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getKey()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/IPrefImpl;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 92
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->preferenceToCursor(Ljava/lang/Object;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getPrefModelByUri(Landroid/net/Uri;)Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;

    move-result-object v0

    .line 122
    .local v0, "model":Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
    if-nez v0, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "update prefModel is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/provider/PreferenceProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update unsupported uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->persistBoolean(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 141
    const/4 v1, 0x0

    return v1

    .line 130
    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->persistLong(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->persistString(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->persistInt(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
