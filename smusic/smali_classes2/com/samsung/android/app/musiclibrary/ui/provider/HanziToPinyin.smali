.class public Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;


# instance fields
.field public mAsciiTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

.field public mPinyinTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->TAG:Ljava/lang/String;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 42
    const-string v0, "android.icu.text.Transliterator"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->CLASSNAME:Ljava/lang/String;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "libcore.icu.Transliterator"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->CLASSNAME:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    :try_start_0
    const-string v1, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    .line 156
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->getInstance(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mPinyinTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    .line 157
    const-string v1, "Latin-Ascii"

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->getInstance(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mAsciiTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->TAG:Ljava/lang/String;

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    .line 173
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tokenize(CLcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 181
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 182
    iput v1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    .line 183
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/16 v0, 0x250

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_4

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_4

    .line 189
    :cond_2
    iput v1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mAsciiTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 191
    :goto_1
    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mAsciiTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_4
    const/4 v0, 0x2

    iput v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mPinyinTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 197
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :cond_5
    const/4 v0, 0x3

    iput v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    .line 199
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v6

    .line 222
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 223
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 225
    .local v5, "tokenType":I
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>()V

    .line 231
    .local v4, "token":Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 233
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 235
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 231
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->tokenize(CLcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;)V

    .line 239
    iget v7, v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 241
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 243
    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    .end local v4    # "token":Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>()V

    .line 251
    .restart local v4    # "token":Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
    :goto_3
    iget v5, v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    goto :goto_2

    .line 246
    :cond_5
    iget v7, v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 247
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 249
    :cond_6
    iget-object v7, v4, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 254
    .end local v0    # "character":C
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 255
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mPinyinTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->mPinyinTransliterator:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
