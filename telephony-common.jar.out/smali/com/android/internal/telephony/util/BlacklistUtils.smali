.class public Lcom/android/internal/telephony/util/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field public static final BLOCK_CALLS:I = 0x1

.field public static final BLOCK_MESSAGES:I = 0x10

.field private static final CM_BLACKLIST_FEATURE_PRESENT:Ljava/lang/String; = "ro.telephony.cm_blklst_on"

.field private static final DEBUG:Z = false

.field public static final MATCH_LIST:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_PRIVATE:I = 0x1

.field public static final MATCH_REGEX:I = 0x4

.field public static final MATCH_UNKNOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdate(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "valid"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v1, "cv":Landroid/content/ContentValues;
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 62
    const-string v6, "phone"

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    :cond_0
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_1

    .line 65
    const-string v6, "message"

    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 69
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "count":I
    if-lez v0, :cond_4

    :goto_2
    return v4

    .end local v0    # "count":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    move v3, v5

    .line 62
    goto :goto_0

    :cond_3
    move v3, v5

    .line 65
    goto :goto_1

    .restart local v0    # "count":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_4
    move v4, v5

    .line 71
    goto :goto_2
.end method

.method public static deleteNumberFromList(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 207
    aget-object v2, p1, v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v10}, Lcom/android/internal/telephony/util/BlacklistUtils;->isListed(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "number = ?"

    new-array v5, v10, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p1, v0

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    return v1
.end method

.method public static isBlacklistEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-static {p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistFeaturePresent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklistFeaturePresent(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 176
    const-string v1, "ro.telephony.cm_blklst_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklistNotifyEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_notify_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_private_number_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBlacklistRegexEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_regex_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_unknown_number_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isListed(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 80
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    const/4 v15, 0x0

    .line 156
    :cond_0
    :goto_0
    return v15

    .line 90
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 92
    const-string v16, "phone"

    .line 102
    .local v16, "type":Ljava/lang/String;
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    const/4 v15, 0x1

    goto :goto_0

    .line 93
    .end local v16    # "type":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x10

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 95
    const-string v16, "message"

    .restart local v16    # "type":Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v16    # "type":Ljava/lang/String;
    :cond_3
    const-string v2, "BlacklistUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v15, 0x0

    goto :goto_0

    .line 107
    .restart local v16    # "type":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 110
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 112
    .local v11, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-boolean v2, v11, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_6

    .line 114
    const/4 v15, 0x2

    goto :goto_0

    .line 118
    .end local v11    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    sget-object v2, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 119
    .local v9, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistRegexEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 121
    const-string v2, "regex"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    :cond_7
    const/4 v15, 0x0

    .line 125
    .local v15, "result":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "is_regex"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v16, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 128
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 130
    const-string v2, "is_regex"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 131
    .local v14, "regexColumnIndex":I
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 132
    .local v13, "modeColumnIndex":I
    const/16 v17, 0x0

    .line 134
    .local v17, "whitelisted":Z
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 135
    :cond_8
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v12, 0x1

    .line 137
    .local v12, "isRegex":Z
    :goto_3
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    .line 139
    .local v8, "blocked":Z
    :goto_4
    if-nez v12, :cond_e

    .line 140
    if-nez v8, :cond_d

    const/16 v17, 0x1

    .line 141
    :goto_5
    const/4 v15, 0x3

    .line 142
    if-eqz v8, :cond_8

    .line 149
    .end local v8    # "blocked":Z
    .end local v12    # "isRegex":Z
    :cond_9
    if-eqz v17, :cond_a

    .line 150
    const/4 v15, 0x0

    .line 152
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 136
    :cond_b
    const/4 v12, 0x0

    goto :goto_3

    .line 137
    .restart local v12    # "isRegex":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 140
    .restart local v8    # "blocked":Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_5

    .line 145
    :cond_e
    if-eqz v8, :cond_8

    .line 146
    const/4 v15, 0x4

    goto :goto_2
.end method