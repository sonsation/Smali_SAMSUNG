.class public Lcom/mezzo/common/downloadmanager/DownloadJson;
.super Ljava/lang/Object;
.source "DownloadJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/downloadmanager/DownloadJson$KEY;
    }
.end annotation


# static fields
.field public static final DATEGUBUN:Ljava/lang/String; = "^"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/mezzo/common/downloadmanager/DownloadJson;->setContext(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/downloadmanager/FileData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mezzo/common/downloadmanager/FileData;>;"
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 69
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "downloadlist"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 71
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 72
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 84
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    :cond_0
    :goto_1
    return-object v6

    .line 73
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "len":I
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 74
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/mezzo/common/downloadmanager/FileData;

    invoke-direct {v2}, Lcom/mezzo/common/downloadmanager/FileData;-><init>()V

    .line 75
    .local v2, "fileData":Lcom/mezzo/common/downloadmanager/FileData;
    const-string v8, "filename"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mezzo/common/downloadmanager/FileData;->setFileName(Ljava/lang/String;)V

    .line 76
    const-string v8, "fileStartDate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mezzo/common/downloadmanager/FileData;->setStartDate(Ljava/lang/String;)V

    .line 77
    const-string v8, "fileEndDate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mezzo/common/downloadmanager/FileData;->setEndDate(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "fileData":Lcom/mezzo/common/downloadmanager/FileData;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadJson;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getModifiedDateMills(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v2, "0"

    .line 89
    .local v2, "modifiedMills":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "modifiedmillis"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getModifiedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v2, "0"

    .line 104
    .local v2, "modifiedMills":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "modifiedtime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public make(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/downloadmanager/FileData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mezzo/common/downloadmanager/FileData;>;"
    const-string v6, ""

    .line 39
    .local v6, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 41
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 51
    const-string v7, "downloadlist"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v7, "modifieddate"

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadJson;->modifideDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v7, "modifiedtime"

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadJson;->modifideTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v7, "modifiedmillis"

    invoke-virtual {p0}, Lcom/mezzo/common/downloadmanager/DownloadJson;->modifideMillis()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 61
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JSON : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 62
    return-object v6

    .line 44
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/downloadmanager/FileData;

    .line 45
    .local v1, "data":Lcom/mezzo/common/downloadmanager/FileData;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v2, "dataobj":Lorg/json/JSONObject;
    const-string v7, "filename"

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/FileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v7, "fileStartDate"

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/FileData;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v7, "fileEndDate"

    invoke-virtual {v1}, Lcom/mezzo/common/downloadmanager/FileData;->getEndDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "data":Lcom/mezzo/common/downloadmanager/FileData;
    .end local v2    # "dataobj":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public modifideDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy^MM^dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public modifideMillis()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public modifideTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH^mm^ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 129
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public requestHour(Ljava/lang/String;)I
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v3, "\\^"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "t":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, "h":I
    array-length v3, v2

    if-lez v3, :cond_0

    .line 140
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 141
    .local v1, "hour":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    .end local v1    # "hour":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadJson;->context:Landroid/content/Context;

    .line 118
    return-void
.end method
