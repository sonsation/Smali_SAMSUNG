.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# static fields
.field private static final SUGGESTION_TYPE_CFG:I = 0x2

.field private static final SUGGESTION_TYPE_NONE:I = 0x0

.field private static final SUGGESTION_TYPE_SEC:I = 0x4

.field private static final SUGGESTION_TYPE_SIM:I = 0x1

.field private static final SUGGESTION_TYPE_TAG:I = 0x8


# instance fields
.field private mFullCountryNameNative:Ljava/lang/String;

.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mIsChecked:Z

.field private mIsPseudo:Z

.field private mIsTranslated:Z

.field private mLangScriptKey:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mParent:Ljava/util/Locale;

.field private mParentSecSuggested:Z

.field private mSuggestionFlags:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z
    .locals 1
    .param p1, "suggestionMask"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p1, "localeId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 86
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 89
    iput v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParentSecSuggested:Z

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private getLangScriptKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 243
    .local v0, "parentWithScript":Ljava/util/Locale;
    if-nez v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    iput-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    .line 247
    .end local v0    # "parentWithScript":Ljava/util/Locale;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v1

    .line 245
    .restart local v0    # "parentWithScript":Ljava/util/Locale;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ""

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private isSuggestionOfType(I)Z
    .locals 2
    .param p1, "suggestionMask"    # I

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-boolean v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    if-nez v1, :cond_0

    .line 174
    return v0

    .line 176
    :cond_0
    iget v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method getContentDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFullCountryNameNative()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNameInUiLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "spLocaleCodes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "spLocaleNames":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 231
    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    aget-object v4, v3, v0

    return-object v4

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getFullNameNative()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameNative(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "spLocaleCodes":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "spLocaleNames":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 194
    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    aget-object v4, v3, v0

    return-object v4

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getLabel(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParent()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method public getParentSecSuggested()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParentSecSuggested:Z

    return v0
.end method

.method isSecSuggested()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParentSecSuggested()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSecTagSuggested()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSuggested()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    if-nez v0, :cond_0

    .line 143
    return v2

    .line 146
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_4

    .line 147
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 149
    :cond_1
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 150
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 151
    :cond_2
    return v2

    .line 153
    :cond_3
    return v3

    .line 157
    :cond_4
    return v2
.end method

.method public isTranslated()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 270
    return-void
.end method

.method public setParentSecSuggested(Z)V
    .locals 0
    .param p1, "isParentSecSuggested"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParentSecSuggested:Z

    .line 125
    return-void
.end method

.method public setTranslated(Z)V
    .locals 0
    .param p1, "isTranslated"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method
