.class final Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.source "DefaultUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxCachedTime"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secs"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    const/16 v5, 0xe10

    if-ge p2, v5, :cond_1

    move v1, v3

    .line 82
    .local v1, "isShortFormat":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 84
    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->duration_format_short:I

    .line 85
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "durationFormat":Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$200()[Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "timeArgs":[Ljava/lang/Object;
    div-int/lit16 v5, p2, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 104
    div-int/lit8 v4, p2, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 105
    const/4 v3, 0x2

    div-int/lit8 v4, p2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    const/4 v3, 0x4

    rem-int/lit8 v4, p2, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "durationFormat":Ljava/lang/String;
    .end local v1    # "isShortFormat":Z
    .end local v2    # "timeArgs":[Ljava/lang/Object;
    :cond_1
    move v1, v4

    .line 80
    goto :goto_0

    .line 89
    .restart local v1    # "isShortFormat":Z
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$100()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 90
    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->duration_format_long:I

    .line 91
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "durationFormat":Ljava/lang/String;
    goto :goto_1
.end method
