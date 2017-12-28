.class public Lcom/android/vcard/VCardEntry$NameCardData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameCardData"
.end annotation


# instance fields
.field private final mBytes:[B

.field private final mFormat:Ljava/lang/String;

.field private mHashCode:Ljava/lang/Integer;

.field private final mIsPrimary:Z

.field private final mSide:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B
    .param p3, "isPrimary"    # Z
    .param p4, "side"    # Ljava/lang/String;

    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mHashCode:Ljava/lang/Integer;

    .line 1297
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    .line 1298
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    .line 1299
    iput-boolean p3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    .line 1300
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mSide:Ljava/lang/String;

    .line 1301
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .param p2, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x1

    .line 1306
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mSide:Ljava/lang/String;

    const-string v2, "FRONT"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1308
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1309
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "data15"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1311
    const-string v1, "mimetype"

    const-string v2, "vnd.sec.cursor.item/name_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1312
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    if-eqz v1, :cond_0

    .line 1313
    const-string v1, "is_primary"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1314
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    :goto_0
    return-void

    .line 1315
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mSide:Ljava/lang/String;

    const-string v2, "BACK"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1318
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id= ? AND mimetype = \"vnd.sec.cursor.item/name_card\""

    .line 1319
    new-array v2, v3, [Ljava/lang/String;

    .line 1318
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1320
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1321
    const-string v1, "data13"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1322
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    if-eqz v1, :cond_3

    .line 1323
    const-string v1, "is_primary"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1324
    :cond_3
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1335
    if-ne p0, p1, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v1

    .line 1338
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$NameCardData;

    if-nez v3, :cond_2

    move v1, v2

    .line 1339
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1341
    check-cast v0, Lcom/android/vcard/VCardEntry$NameCardData;

    .line 1342
    .local v0, "NameCardData":Lcom/android/vcard/VCardEntry$NameCardData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1343
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 1342
    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1373
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAMECARD:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1348
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mHashCode:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1349
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1362
    :goto_0
    return v1

    .line 1352
    :cond_0
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1353
    .local v1, "hash":I
    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    .line 1354
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    if-eqz v3, :cond_1

    .line 1355
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    array-length v4, v3

    :goto_2
    if-lt v2, v4, :cond_3

    .line 1360
    :cond_1
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x4cf

    :goto_3
    add-int v1, v3, v2

    .line 1361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mHashCode:Ljava/lang/Integer;

    goto :goto_0

    .end local v1    # "hash":I
    :cond_2
    move v1, v2

    .line 1352
    goto :goto_1

    .line 1355
    .restart local v1    # "hash":I
    :cond_3
    aget-byte v0, v3, v2

    .line 1356
    .local v0, "b":B
    add-int/2addr v1, v0

    .line 1355
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1360
    .end local v0    # "b":B
    :cond_4
    const/16 v2, 0x4d5

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1367
    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mFormat:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 1368
    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$NameCardData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1367
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
